
(defrule abrupt0
(declare (salience 5000))
(id-root ?id abrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Akasmika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abrupt.clp 	abrupt0   "  ?id "  Akasmika )" crlf))
)

(defrule abrupt1
(declare (salience 4900))
(id-root ?id abrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Akasmika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abrupt.clp 	abrupt1   "  ?id "  Akasmika )" crlf))
)

;"abrupt","Adj","1.Akasmika"
;His speech had an abrupt ending.
;--"2.rUKA"
;Everybody dislikes his abrupt manners.
;--"3.asambaxXa"
;He has an abrupt style of writing.
;
;
;LEVEL 
;
;
;"abrupt","Adj","1.Akasmika"
;His speech had an abrupt ending.
;usake BARaNa kA anwa akasmAw huA. 
;
;--"2.rUKA"-KuSka- vyavahAra meM Akasmika baxalAva
;Everybody dislikes his abrupt manners.
;saBI loga usake Akasmika vyavahAra ko nApasanxa karawe hEM.
;
;--"3.asambaxXa"-acAnaka eka avasWA se xUsarI meM jAnA-Akasmika parivarwana
;He has an abrupt style of writing.
;usakI eka asambaxXa liKAI kI SElI hE.
;
;  nota:- uparyukwa aMkiwa 'abrupt'Sabxa ke liye viSeRaNa ke wInoM vAkyoM kA arWa  
;        eka hI arWa 'akasmAwa'Sabxa se nikAlA jA sakawA hE awaH isakA sUwra
;        nimna prakAra liKa sakawe hEM
;
;         sUwra : Akasmika`
;       
;
