
(defrule flake0
(declare (salience 5000))
(id-root ?id flake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flaked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tukadZoM_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flake.clp  	flake0   "  ?id "  tukadZoM_meM )" crlf))
)

;"flaked","Adj","1.tukadZoM_meM"
;Flaked cherries were used in this dish.
;
(defrule flake1
(declare (salience 4900))
(id-root ?id flake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUkRma_tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flake.clp 	flake1   "  ?id "  sUkRma_tukadZA )" crlf))
)

;"flake","N","1.sUkRma_tukadZA"
;Snow flakes were falling in the valley.
;
(defrule flake2
(declare (salience 4800))
(id-root ?id flake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flake.clp 	flake2   "  ?id "  parawa_kara )" crlf))
)

;"flake","V","1.parawa_karanA"
;He used his knife to flake off the stick.
;
