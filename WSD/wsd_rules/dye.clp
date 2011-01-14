
(defrule dye0
(declare (salience 5000))
(id-root ?id dye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dye.clp 	dye0   "  ?id "  raMga )" crlf))
)

;"dye","N","1.raMga"
;They use vegetable dyes for coloring the garments.
;
(defrule dye1
(declare (salience 4900))
(id-root ?id dye)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dye.clp 	dye1   "  ?id "  raMga )" crlf))
)

;"dye","V","1.raMganA"
;Clothes will be dyed to look attractive
;
