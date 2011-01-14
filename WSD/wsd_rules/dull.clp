
(defrule dull0
(declare (salience 5000))
(id-root ?id dull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dull.clp 	dull0   "  ?id "  suswa )" crlf))
)

;"dull","Adj","1.suswa/mUDZa"
;He was so dull at parties
;Business is dull (or slow)
;--"2.XuMXalA"
;A dull glow
;--"3.halkA"
;Dull greens && blues
;A dull throbbing
;The dull thud
;--"4.kuMxa"
;The knife was too dull to be of any use
;--"5.niruwsAha/"
;A dull gaze
;
(defrule dull1
(declare (salience 4900))
(id-root ?id dull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suswa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dull.clp 	dull1   "  ?id "  suswa_kara )" crlf))
)

;"dull","VT","1.suswa_karanA"
;Middle age dulled her appetite for travel
;--"2.kuMxa_banAnA"
;Age had dulled the surface
;
