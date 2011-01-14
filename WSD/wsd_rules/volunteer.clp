
(defrule volunteer0
(declare (salience 5000))
(id-root ?id volunteer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svayaMsevaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volunteer.clp 	volunteer0   "  ?id "  svayaMsevaka )" crlf))
)

;"volunteer","N","1.svayaMsevaka"
;He is a volunteer working in this organisation
;He joined the volunteer forces
;
(defrule volunteer1
(declare (salience 4900))
(id-root ?id volunteer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanI_sevAez_arpiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volunteer.clp 	volunteer1   "  ?id "  apanI_sevAez_arpiwa_kara )" crlf))
)

;"volunteer","V","1.apanI_sevAez_arpiwa_kara"
;--"2.svecCA_se_kAma_karanA"
;He volunteered to help
;She volunteered to drive the old lady home
;--"3.svecCApUrvaka_kahanA"
;He volunteered the information
;
