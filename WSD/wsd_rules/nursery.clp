;@@@ Added by Nandini(20-1-2014)
;She Started a nursery for infants under two.
;usane xo ke nIce baccoM ke liye xAI KAnA Suru kiyA.
(defrule nursery0
(declare (salience 500))
(id-root ?id nursery)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAla_kakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nursery.clp    nursery0   "  ?id "  bAla_kakRa )" crlf))
)

;@@@ Added by Nandini(20-1-2014)
;This is beautiful nursery.
;yaha sunxara pOXA Gara hE.
(defrule nursery1
(declare (salience 100))
(id-root ?id nursery)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOXA_Gara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nursery.clp    nursery1   "  ?id "  pOXA_Gara )" crlf))
)
