
;@@@ Added by Anita--7.4.2014
;The bill was railroaded through the House. [oxford learner's dictionary]
;बिल सदन में पारित कराया गया था ।
(defrule railroad1
(declare (salience 5000))
(id-root ?id railroad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  railroad.clp 	railroad1   "  ?id " pAriwa_kara )" crlf))
)

;#################################default-rule########################################
;@@@ Added by Anita--7.4.2014
;This town got a lot bigger when the railroad came in the 1860s. [oxford learner's dictionary]
;जब रेल 1860 के दशक में आया तब से यह शहर बहुत बड़ा हो गया है ।
(defrule railroad_default-rule
(declare (salience 0))
(id-root ?id railroad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rela_mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  railroad.clp 	railroad_default-rule   "  ?id " rela_mArga )" crlf))
)
