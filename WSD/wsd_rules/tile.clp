
(defrule tile0
(declare (salience 5000))
(id-root ?id tile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaparEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tile.clp 	tile0   "  ?id "  KaparEla )" crlf))
)

;"tile","N","1.KaparEla"
;Tiles are used for roof .
;--"2.patiyA"
;She is sitting on a tile.
;
(defrule tile1
(declare (salience 4900))
(id-root ?id tile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaparEla_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tile.clp 	tile1   "  ?id "  KaparEla_se_Daka )" crlf))
)

;"tile","VT","1.KaparEla_se_Daka"
;The roof top is tiled  by straw.
;
