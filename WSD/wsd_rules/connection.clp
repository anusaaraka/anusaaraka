;@@@ Added by Preeti(18-12-13)
;Many companies now offer free connection to the Internet. 
;bahuwa sArI kampaniyAz aba  muPwa itaraneta kanekSana xewI hEM.
(defrule connection1
(declare (salience 1050))
(id-root ?id connection)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-viSeRaNa  ?id ?id1) (id-word ?id1 faulty|free))
(viSeRya-to_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kanekSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connection.clp 	connection1   "  ?id "  kanekSana )" crlf))
)

;@@@ Added by Preeti(18-12-13)
;I am having problems with my Internet connection. 
;muJe mere  itaraneta kanekSana meM samasyA ho rahI hE.
(defrule connection3
(declare (salience 1050))
(id-root ?id connection)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 internet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kanekSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connection.clp 	connection3   "  ?id "  kanekSana )" crlf))
)


;Added by Preeti(18-12-13)
;The train was half an hour late and I missed my connection.
;(defruleconnection2
;(declare (salience 2000))
;(id-root ?id connection)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id ----))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ;connection.clp 	connection2   "  ?id "  ---- )" crlf))
;)


;#############################Defaults rule#######################################

;@@@ Added by Preeti(18-12-13)
;The connection between smoking and heart disease is well known. 
;XUmrapAna Ora hqxaya roga ke bIca kA sambanXa jAnA mAnA hE.
(defrule connection0
(declare (salience 1000))
(id-root ?id connection)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sambanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connection.clp 	connection0   "  ?id "  sambanXa )" crlf))
)
