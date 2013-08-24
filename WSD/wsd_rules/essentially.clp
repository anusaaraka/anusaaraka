;Added by Pramila(Banasthali University) 
;The argument was essentially a technical one.
;A communication satellite is essentially a repeater station in space.
;His saying is essentially true.
;They are essentially never-ending.
(defrule essentially0
(declare (salience 4900))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially0   "  ?id " vAswava_meM  )" crlf))
)

;Added by Pramila(Banasthali University)
;It has to be essentially done.
;It has to be essentially better.
(defrule essentially1
(declare (salience 5000))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?kri)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyaka_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially1   "  ?id " AvaSyaka_rUpa_se )" crlf))
)

;Added by Pramila(Banasthali University)
;They are essentially supporting you.
;It essentially bans foreigners from carrying guns in Mexico.
(defrule essentially2
(declare (salience 4900))
(id-root ?id essentially)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  essentially.clp 	essentially2   "  ?id " vAswava_meM  )" crlf))
)
