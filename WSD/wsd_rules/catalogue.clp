
(defrule catalogue0
;(declare (salience 5000));salience changed
(id-root ?id catalogue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmAvalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catalogue.clp 	catalogue0   "  ?id "  nAmAvalI )" crlf))
)

;"catalogue","N","1.nAmAvalI/nAmasUcI"
;The catalogue of books is available in the computer.
;
(defrule catalogue1
(declare (salience 4900))
(id-root ?id catalogue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcIpawra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catalogue.clp 	catalogue1   "  ?id "  sUcIpawra_banA )" crlf))
)

;"catalogue","V","1.sUcIpawra_banAnA"
;The title of books are catalogued in computers nowadays.
;

;@@@ Added by Preeti(14-4-14)
;A catalogue of disasters took place last year.[Self]
;wabAhI kI SrqMKalA piCale varRa Gatiwa huI.
;[Oxford Advanced Learner's Dictionary]
(defrule catalogue2
(declare (salience 5000))
(id-root ?id catalogue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 disaster|error|misfortune)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SrqMKalA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catalogue.clp 	catalogue2   "  ?id "  SrqMKalA )" crlf))
)
