
(defrule hoover0
(declare (salience 5000))
(id-root ?id hoover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vekyUma_klInara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoover.clp 	hoover0   "  ?id "  vekyUma_klInara )" crlf))
)

;"hoover","N","1.vekyUma_klInara"
;kAlIna va kArapeta kA kacarA' hoover'(vekyUma klInara )se sAPa ho jAwA hE.
;
(defrule hoover1
(declare (salience 4900))
(id-root ?id hoover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vekyUma_klIna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoover.clp 	hoover1   "  ?id "  vekyUma_klIna_kara )" crlf))
)

;"hoover","V","1.vekyUma_klIna_karanA"
;usane sAre kamaroM ko 'hoover' kiyA.      
;
