;; Always create a journal file with today's date and time.

;; Ask for subtitle:
journalname=''
READ,journalname,PROMPT='Enter IDL journal sub-name: '

journalpath='/path/to/IDL_Journals/'
fs='(I2.2)'
CALDAT,SYSTIME(/JULIAN),mon,day,yr,hr,min
datstr=STRING(yr,  FORMAT='(I4.2)') + $
       STRING(mon, FORMAT=fs)       + $
       STRING(day, FORMAT=fs) + '_' + $
       STRING(hr,  FORMAT=fs)       + $
       STRING(min, FORMAT=fs)
JOURNAL,journalpath+datstr+'_'+journalname+'.jrn'
