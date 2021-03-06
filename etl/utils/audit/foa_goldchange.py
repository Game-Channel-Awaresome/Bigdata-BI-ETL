#coding=utf-8
'''
Created on Feb 10, 2017

@author: xiaochengcao
'''
import arrow
import MySQLdb
import json
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

if __name__ == '__main__':
    
    output_format = '%s\t%s\n'
    
    conn=MySQLdb.Connect(host='rm-2ze7f85494p1i7i7r.mysql.rds.aliyuncs.com',port=3306,user='heyijoy',passwd='heyi20!^#',db='audit_foa',charset='utf8')
    ordercursor = conn.cursor()
    ordercursor.execute('select role_id,optime,role_action,gem_change,gem_old from role_gem')
    orderresult=ordercursor.fetchall()
    
    # 查询user和role对应关系
    userroleconn=MySQLdb.Connect(host='rm-2ze7f85494p1i7i7r.mysql.rds.aliyuncs.com',port=3306,user='heyijoy',passwd='heyi20!^#',db='audit_foa',charset='utf8')
    userrolecursor = userroleconn.cursor()
    userrolecursor.execute('select ROLEID,USERID,AREAID,ROLENAME,LASTSIGNINIP from user_role')
    
    userroleresults = userrolecursor.fetchall()
    roleresultdict = {}
    
    for userroleresult in userroleresults:
        roleresultdict[userroleresult[0]] = '\t'.join(str(i) for i in userroleresult[1:])                                                                                                                                                        
    
    userroleconn.close()
    
    for sqlresult in orderresult:
    
        event = 'user goldchange'
        context = {}
        matrix_sdk_context = {}
        data_formatted = {}
        
        roleid = sqlresult[0]
        createdtime = str(sqlresult[1])
        actiontype = sqlresult[2]
        goldnum = sqlresult[3]
        goldold = sqlresult[4]
        
        if actiontype == 0:
            actiontype = 'get'
        elif actiontype == 1:
            actiontype = 'dec'
        
        server_time_str = createdtime + '+0800'
        server_time_str = str(arrow.get(server_time_str).for_json())
        
        # 写入user和role对应关系
        userid = serverid = rolename = lastloginip = '-'
        
        if roleresultdict.has_key(str(roleid)):
            userinfo = roleresultdict[str(roleid)]
            userid,serverid,rolename,lastloginip = userinfo.split('\t')
        
        context['channel_id'] = '-'
        context['fixed_time'] = server_time_str
        context['role_id'] = roleid
        context['actiontype'] = actiontype
        context['goldnum'] = goldnum
        context['goldold'] = goldold
        context['goldnew'] = '-'
        
        context['user_id'] = userid
        context['rolename'] = rolename
        context['serverid'] = serverid
        context['lastloginip'] = lastloginip
         
        matrix_sdk_context['matrix_sdk_api_version'] = '1.0.0'
        matrix_sdk_context['matrix_sdk_lang'] = 'java'
        matrix_sdk_context['matrix_sdk_platform'] = 'common'
        matrix_sdk_context['matrix_sdk_version'] = '1.0.0'
        matrix_sdk_context['matrix_token'] = '-'
         
        data_formatted['event'] = event
        data_formatted['context'] = context
        data_formatted['matrix_sdk_context'] = matrix_sdk_context
        
        json_data = json.dumps(data_formatted, ensure_ascii=False)
        
        output = output_format % (server_time_str, json_data)
        sys.stdout.write(output)

    conn.close()
