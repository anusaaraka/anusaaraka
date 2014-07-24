;"convincing","Adj","1.niScayAwmaka"
;Her coach was pleased by her convincing victory.
;Her arguments were convincing.
;
;(defrule convince0
;(declare (salience 5000))
;(id-root ?id convince)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id convincing )
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id niScayAwmaka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  convince.clp  	convince0   "  ?id "  ;niScayAwmaka )" crlf))
;)

;$$$  Modified mng from ' viSvAsa_karavA' to 'viSvAsa_xIlavA' by Preeti(3-1-14)
;"convince","V","1.viSvAsa_karavA{pramANa_Axi_xvArA}"
(defrule convince1
(declare (salience 4900))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvAsa_xIlavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convince.clp 	convince1   "  ?id "  viSvAsa_xIlavA )" crlf))
)

;"convince","VT","1.samaJA_xenA"
;He had finally convinced several customers of the advantages of his product
(defrule convince2
(declare (salience 4800))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convince.clp 	convince2   "  ?id "  samaJA_xe )" crlf))
)

;--"2.xqDZa_mawa_honA"
;I am convinced of her sincerity.
;

;@@@ Added by Preeti(3-1-14)
;I have been trying to convince him to see a doctor. 
;mEM usako dAktara ko xeKane ke liye mAnAne kA prayAsa karawA rahA hUz.
(defrule convince3
(declare (salience 4950))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
(to-infinitive  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convince.clp 	convince3   "  ?id "  mAnA )" crlf))
)
;@@@ Added by Preeti(3-1-14)
;If you are convinced that you are the most worthy judge in the land, you may now occupy this throne. [By mail]
;yaxi Apa mAnawe hEM, ki Apa BUmi para ke sabase aXika yogya nyAyAXISa hEM wo aba Apa yaha rAjasiMhAsana grahaNa kara sakawe hEM.
(defrule convince4
(declare (salience 4900))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAnawe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  convince.clp 	convince4   "  ?id "  mAnawe )" crlf))
)
