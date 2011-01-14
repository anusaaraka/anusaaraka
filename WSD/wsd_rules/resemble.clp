; Added by Meena(21.10.09)  
;It did not resemble any living creature.
(defrule resemble0
(declare (salience 5000))
(id-root ?id resemble)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna_laga))
(assert (kriyA_id-object_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  resemble.clp     resemble0   "  ?id "  samAna_laga )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  resemble.clp      resemble0   "  ?id " ke )" crlf)
)
)



;Added by Meena(23-10-09).
;Modified by Sukhada (30-12-09) as the relation name "kriyA-kqxanwa_viSeRaNa" has been modified as "kriyA-kqxanwa_karma".
;They seem to resemble each other .

(defrule resemble1
(declare (salience 5000))
(id-root ?id resemble)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-kqxanwa_viSeRaNa  ?id1 ?id)
(kriyA-kqxanwa_karma  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  resemble.clp     resemble1   "  ?id "  ke_samAna )" crlf)
)
)



;Added by Sheetal(21.09.09)
;Salience reduced by Meena(21.10.09) as it is a default rule, with no conditions. 
(defrule resemble2
;(declare (salience 5000))
(declare (salience 1000))
(id-root ?id resemble)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  resemble.clp     resemble1   "  ?id "  ke_samAna )" crlf)
)
)
;They seem to resemble each other .
;eka_xUsare ve ke_samAna prawIwa howe hEM













