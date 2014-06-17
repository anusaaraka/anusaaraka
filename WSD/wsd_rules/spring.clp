
(defrule spring0
(declare (salience 5000))
(id-root ?id spring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spriMga_lagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spring.clp 	spring0   "  ?id "  spriMga_lagA_huA )" crlf))
)

;"spring","Adj","1.spriMga_lagA_huA"
;A spring matress is more comfortable than an ordinary one.
;
(defrule spring1
(declare (salience 4900))
(id-root ?id spring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spriMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spring.clp 	spring1   "  ?id "  spriMga )" crlf))
)

;"spring","N","1.spriMga"
;--"2.vasanwa"
;The best season is the spring season.
;
(defrule spring2
(declare (salience 4800))
(id-root ?id spring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spring.clp 	spring2   "  ?id "  uCala )" crlf))
)
;@@@ Added by jagriti(11.12.2013)
;They would bathe in the hot spring there across the Ganga.
;वे गंगा के किनारे गर्म पानी के झरने में स्नान करेंगे.
(defrule spring3
(declare (salience 5000))
(id-root ?id spring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spring.clp 	spring3   "  ?id "  JaranA )" crlf))
)


;"spring","V","1.uCalanA"
;Don't spring on bed it will break.
;
;LEVEL 
;
;
;"spring","N","1.basanwa"-basanwa qwu meM hara jagaha pIlI sarasoM sPutiwa howI hE va  
;              KuSiyAlI kA vAwAvaraNa rahawA hE-sPuraNa howA hE-uCAla
;
;The best season is the spring season.
;
;"2.GumAvaxAra_wAra/sprigaM"-xabAne ke uparAnwa punaH uCala kara vApisa apane sWAna para 
;                AjA  jAwI hE-uCAla
;Don't bounce on the mattress,you will break the springs. 
;
;"3.JaranA" -pqWvI ke anxara se sPuriwa howA hE-uCAla
;There are some springs which give hot water. 
;
;"4.praPullawA/sPUrwi" -sPuriwa honA-uCAla
;The springs of student action,shows their keen intrest.   
;
;"5.kUxa/CalAMga"-uCAla
;With an easy spring the dog reached the boundry wall.
;
;"spring","V","1.uCalanA"-uCAla
;Don't spring on bed it will break.
;
;"2.uwpanna honA/pExA honA"-sPuriwa honA-uCAla
;The belief has sprung up.
;
;"3.ekAeka prakata honA"-sPuriwa honA -uCAla
;Where did you spring from?
;
;"4.visPota honA/calAnA" -acAnaka kArya kA honA -sPuriwa honA -uCAla
;At last the engine sprang into life.  
;
;    nota :-- uparyukwa aMkiwa 'spring'Sabxa ke saBI kriyA Ora saMjFA vAkyoM kA
;         nirIkRaNa karane para xqRtigocara howA hE ki saBI arWa eka nABikIya Sabxa
;         'uCAla'se spaRta ho sakawe hEM.isakA sUwra nimna prakAra liKa sakawe hEM
;
;sUwra : uCAla   
;
