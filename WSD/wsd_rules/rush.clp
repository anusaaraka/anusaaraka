
(defrule rush0
(declare (salience 5000))
(id-root ?id rush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rush.clp 	rush0   "  ?id "  BIdZa )" crlf))
)

;"rush","N","1.BIdZa"
;We left in the afternoon to avoid the evening rush.
;--"2.hadZabadZI/jalxI_meM"
;She made a rush for the shop.
;Don't work in a rush though there is a pile of files.
;She is in a mad rush so I can't stop her.
;--"3.baDZawI_mAzga"
;The unexpected heavy monsoon caused a rush on raincoats.
;
(defrule rush1
(declare (salience 4000))
(id-root ?id rush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxabAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rush.clp 	rush1   "  ?id "  jalxabAjZI_kara )" crlf))
)

;"rush","VI","1.jalxabAjZI_karanA"
;Don't rush, take your own time to get ready.
;I'm afraid without a single thought she rushed into marriage.
;

;@@@ Added by Anita-9.1.2014
;The action of the rushing water cleans the gully. [By mail]
;तेज़ी से बहते हुये पानी की क्रिया नाली साफ करती है ।
(defrule rush2
(declare (salience 5000))
(id-root ?id rush)
(id-word ?id rushing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 water)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejZI_se_bahawe_hue_pAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rush.clp 	rush2   " ?id "  " ?id1 " wejZI_se_bahawe_hue_pAnI )" crlf))
)

;@@@ Added by Anita-9.1.2014
;I stretched out and listened to the sound of the rushing stream. [Cambridge-dictionary]
;मैं बाहर निकला और तेज़ी से बहते हुए झरने की आवाज़ सुनी ।
(defrule rush3
(declare (salience 5010))
(id-root ?id rush)
(id-word ?id rushing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 stream)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejZI_se_bahawI_huI_Jarane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rush.clp 	rush3   " ?id "   " ?id1 " wejZI_se_bahawe_hue_Jarane )" crlf))
)
