
(defrule contrast0
(declare (salience 5000))
(id-root ?id contrast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrast.clp 	contrast0   "  ?id "  viroXa )" crlf))
)

;"contrast","N","1.viroXa"
;There is a remarkable contrast between the twins.
;The contrast of light && dark shade counts a lot in painting.
;
(defrule contrast1
(declare (salience 4900))
(id-root ?id contrast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyawireka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrast.clp 	contrast1   "  ?id "  vyawireka_kara )" crlf))
)

;"contrast","VT","1.vyawireka_karanA"
;His deeds contrasted sharply with his promises.
;It is intresting to contrast the two singers.
;
