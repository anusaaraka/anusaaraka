;@@@ Added by Pramila(BU) on 15-02-2014
;He committed an outrage on a girl.     ;shiksharthi
;उसने एक लड़की का सतीत्व भंग किया.
(defrule outrage0
(declare (salience 5000))
(id-root ?id outrage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-on_saMbanXI  ?kri ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawIwva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outrage.clp 	outrage0   "  ?id "  sawIwva )" crlf))
)

;@@@ Added by Pramila(BU) on 15-02-2014
;They outraged the peace of the city.   ;shiksharthi
;उन्होंने शहर की शांति भंग कर दी.
(defrule outrage1
(declare (salience 5000))
(id-root ?id outrage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BMga_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outrage.clp 	outrage1   "  ?id "  BMga_kara_xe )" crlf))
)

(defrule outrage2
(declare (salience 100))
(id-root ?id outrage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRoBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outrage.clp 	outrage2   "  ?id "  prakRoBa )" crlf))
)

;"outrage","N","1.prakRoBa"
;The outrage over the ragging incident was very sincere.
;
(defrule outrage3
(declare (salience 100))
(id-root ?id outrage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRubXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outrage.clp 	outrage3   "  ?id "  prakRubXa_kara )" crlf))
)

;"outrage","V","1.prakRubXa_karanA"
;The new budget outrages the middle class.
;
