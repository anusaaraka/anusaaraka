;;By Ritesh Srivastava
;;This process consumes enormous amounts of energy.
;;

(defrule consume0
(declare (salience 5000))
(id-root ?id consume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consume.clp 	consume0   "  ?id "  Karca )" crlf))
)


;;The Hotel was consumed by fire.
(defrule consume1
(declare (salience 4900))
(id-root ?id consume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consume.clp 	consume1   "  ?id "  naRta )" crlf))
)
