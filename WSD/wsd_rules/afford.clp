(defrule afford0
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id Karca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    afford   "  ?id "  Karca_kara )" crlf));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10)
)

