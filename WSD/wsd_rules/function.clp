; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; We now have a functioning shower.    [OALD]
; अब हमारा फब्बारा चल रहा है . ( क्रियाशील है, काम कर रहा है )
(defrule function1
(id-root ?id function)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  function.clp    function1   "  ?id "  kArya_kara )" crlf))
)
;_________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; The sofa also functions as a bed.    [OALD]
; सोफा पलंग का (बिस्तर ) का भी काम करता है .( सोफा पलंग कि तरह भी इस्तमाल किया जा सकता है )
(defrule function2
(declare (salience 4900))
(id-root ?id function)
(id-root ?id1 as)
?mng <-(meaning_to_be_decided ?id)	
(kriyA-as_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  function.clp    		function2   "  ?id "  kArya_kara )" crlf))
)
;_________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; In x=5y,x is a function of y.  [OALD]
; ? ? एक्स में ( xx )=5y, y का प्रकार्य है .
(defrule function3
(declare (salience 4900))
(id-root ?id function)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ? ?id)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Palana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  function.clp    		function3   "  ?id "  Palana )" crlf))
)
;_________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; The function of the heart is to pump blood through the body.  [OALD]
; शरीर से (में ) रक्त का संचार करना ह्रदय का काम है .
(defrule function4
(declare (salience 4800))
(id-root ?id function)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-of_saMbanXI  ?id ?id1) (viSeRya-of_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  function.clp    		function4   "  ?id "  kArya )" crlf))
)
;_________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; The hall provided a venue for weddings and other functions.   [OALD]
; हाल विवाह और दूसरे समारोह के मनाने के लिए बनाया गया है .
; There are numerous functions in aid of charity.
; दान में मदद करने के लिए अनेंको तरीकें हैं .
(defrule function5
(declare (salience 4700))
(id-root ?id function)
?mng <-(meaning_to_be_decided ?id)
;(or (kriyA-for_saMbanXI  ? ?id) (viSeRya-in_saMbanXI  ?id ?))
(not (kriyA-object  ?id1 ?id) )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAroha_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  function.clp    		function5   "  ?id "  samAroha_ho )" crlf))
)
;_________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; Uma welcomed her brother affectionately and promised to attend the function.    [OALD]
; उमा ने बड़े ही स्नेह से अपने भाई का स्वागत किया और समारोह में शामिल होने का वायदा किया .
(defrule function6
(declare (salience 4800))
(id-root ?id function)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAroha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  function.clp    		function6   "  ?id "  samAroha )" crlf))
)
