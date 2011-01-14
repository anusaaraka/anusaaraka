
(defrule rack0
(declare (salience 5000))
(id-root ?id rack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rEka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rack.clp 	rack0   "  ?id "  rEka )" crlf))
)

;"rack","N","1.rEka"
;She settled the books neatly on the rack. 
;She reached up && put her briefcase in the rack.
;--"2.purAne_samaya_me_yAwanA_xene_kA_yaMwra"
;Put the slave on the rack.  
;--"3.xanwuraxandak"
;A part of a machine consisting of a bar with teeth into which those of a wheel or gear fit.
;
(defrule rack1
(declare (salience 4900))
(id-root ?id rack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rack.clp 	rack1   "  ?id "  ho )" crlf))
)

;"rack","VT","1.honA"
;Severe pain racked her body. 
;--"2.Barasaka_prayAsa_karanA"
;I've been racking my brains trying to remember her name.
;
