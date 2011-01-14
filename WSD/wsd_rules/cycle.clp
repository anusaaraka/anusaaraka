
(defrule cycle0
(declare (salience 5000))
(id-root ?id cycle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cycling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAikila_calAne_kI_krIdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cycle.clp  	cycle0   "  ?id "  sAikila_calAne_kI_krIdA )" crlf))
)

;"cycling","N","1.sAikila_calAne_kI_krIdA"
;Cycling is a popular sport in Europe
;
(defrule cycle1
(declare (salience 4900))
(id-root ?id cycle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cycle.clp 	cycle1   "  ?id "  cakra )" crlf))
)

(defrule cycle2
(declare (salience 4800))
(id-root ?id cycle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAikila_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cycle.clp 	cycle2   "  ?id "  sAikila_calA )" crlf))
)

;"cycle","V","1.sAikila_calAnA"
;The boy cycled along the road
;
;
;LEVEL 
;
;
;Headword : cycle
;
;Examples --
;
;"cycle","N","1.cakra"
;The cycle of birth && death is a everlasting process.
;jIvana kA marane-jIne kA cakra eka kaBI na samApwa hone vAlI kriyA hE
;
;--"2.sAikila" 
;Parents bought the child a cycle in the fair. 
;unhone mele meM bacce ke liye eka sAikila KarIxI
;
;"cycle","V","1.sAikila para caDZanA" 
;Will you cycle to the school today? 
;kyA wuma Aja sAikila para caDZa kara skUla jAoge
;
;--"2.sAikila calAnA"
;She cycled uphill boldly. 
;vaha bahAxurI se pahAdZI ke Upara sAikila calA le gayI. 
;                                              
;    nota:--uparyukwa 'cycle'Sabxa ke saBI kriyA Ora saMjFA ke vAkyoM para yaxi 
;         xraRti dAleM wo yaha niRkarRa nikalawA hE ki isa Sabxa kA mUla arWa 
;         'cakra' Ora 'sAikila calAnA'se liyA jA sakawA hE awaH isake   
;         nimna prakAra liKa sakawe hEM.
;         cakra GatanA,kAla,qwu,vAhana kisI kA BI ho sakawA hE. 
;
;                  sUwra : cakra-sAikila
;
;
