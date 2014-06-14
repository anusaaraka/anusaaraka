;$$$ Modified by Anita--16.12.2013 changed mng from 'pariNAmiwa_ho' to 'pariNAma_ho' 
;Teachers were not fully prepared for the major changes in the exam system, and chaos resulted.
;अध्यापक परीक्षा की प्रणाली में बड़े परिवर्तनों के लिए पूरी तरह तैयार नहीं थे ,उसका परिणाम अव्यवस्था (अस्त –व्यस्तता) हुआ ।
;Their negligence resulted in a heavy loss. [old clp rule]
;भारी नुकसान उनकी लापरवाही का परिणाम हुआ ।
;When water levels rise, flooding results. [oxford dictionary]
;जब पानी का स्तर बढ़ता है तो बाढ़ आना परिणाम हौता है ।
(defrule result1
(declare (salience 4800))
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result1   "  ?id "  pariNAma_ho )" crlf))
)

;default_sense && category=verb	nawIjA_nikala	0
;"result","VI","1.nawIjA_nikalanA"
;Their negligence resulted in a heavy loss.
;Undue haste results badly.     
;
;@@@ Added by Anita--16.12.2013
;The fire resulted in damage to their property. [cambridge dictionary ]
;आग लगने के परिणामस्वरूप उनकी सम्पत्ति को नुकसान हुआ .
;आग उनकी संपत्ति के नुकसान में परिणत हो गई ।
(defrule result2
(declare (salience 5050))
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result2   "  ?id "  pariNiwa_h0 )" crlf))
)
;@@@ Added by Anita--16.12.2013
;Icy road conditions in Teesdale resulted in two roads being closed. [cambridge dictionary]
;तीस्दाले में सड़क पर वर्फ जमने का परिणाम निकला कि दो सडकों को बंद करना पड़ा ।
(defrule result3
(declare (salience 5000))
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result3   "  ?id "  pariNAma_nikala )" crlf))
)

;@@@ Added by Anita
;Undue haste results badly.
;अनावश्यक जल्दबाजी का खराब परिणाम होता है ।
(defrule result4
(declare (salience 5500))
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-in_saMbanXI  ?id ?)
(kriyA-object  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result4   "  ?id "  pariNAma_ho )" crlf))
)

;###############################default-rule###################################
;Example sentence and translation added by Anita--16.12.2013
;His difficulty in walking results from a childhood illness. [cambridge dictionary]
;उसके चलने में कठिनाई उसके बचपन की बीमारी का परिणाम है ।
(defrule result0
(id-root ?id result)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  result.clp 	result0   "  ?id "  pariNAma )" crlf))
)
;"result","N","1.pariNAma"
;She died as a result of heart failure.
;Result of a mathematical problem.
;The result of the match was a draw.
