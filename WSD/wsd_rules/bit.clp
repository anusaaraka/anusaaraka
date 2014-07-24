
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13/03/2014
;The book fell to bits in my hands.[oald]
;पुस्तक टुकड़े टुकड़े होकर मेरे हाथों में गिरी
(defrule bit3
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?kri ?id)
(id-word ?kri fell)
(id-word =(- ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) tukade_tukade_hokara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bit.clp  bit3  "  ?id "  " (- ?id 1) "  tukade_tukade_hokara)" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13/03/2014
;We can finish this job on time if everyone does their bit.[oald]
;हम ये काम समय पर खत्म कर लेंगे अगर सब अपना काम करेंं
(defrule bit4
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(kriyA-object  ?kri ?id)
(id-root ?kri do)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit4  "  ?id "  kAma)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13/03/2014
;She stuffed all her bits and pieces into a bag and left.[oald]
;उसने उसका सारा सामान बैग में भरा और चली गयी
(defrule bit5
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ? ?id ?id1)
(id-word ?id1 pieces)
(id-word =(+ ?id 1) and)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 (+ ?id 1) sArA_sAmAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bit.clp  bit5  "  ?id "  " ?id " "(+ ?id 1)" sArA_sAmAna)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13/03/2014
;Inside I'm in bits because I miss him so much.[oald]
;मैं अन्दर से बहुत अधिक दुखी हूँ कयोंकि मुझे उसकी बहुत ज्यादा याद आ रही है
(defrule bit6
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?sub)
(kriyA-in_saMbanXI  ?kri ?id)
(id-word =(- ?id 1) in)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) bahuwa_aXika_xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bit.clp  bit6  "  ?id "  " (- ?id 1) "  bahuwa_aXika_xuKI)" crlf))
)




;Added by Meena(23.7.10)
;That bit at the beginning of the film was brilliant . 
(defrule bit0
(declare (salience -100));salience reduced by Garima Singh
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit0  "  ?id "  CotA_anSa)" crlf))
)


(defrule bit00
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(or(idiom_type_1  =(- ?id 1) ?id)(viSeRya-det_viSeRaNa  ?id  =(- ?id 1)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WoDA_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit00  "  ?id "  WoDA_sA)" crlf))
)




;Salience reduced by Meena(23.7.10)
;Added by Veena (10-03-10)
;She tried to do a bit of exercise every day .
;usane prawyeka xina WodA #sA vyAyAma #kA karane ke liye prayAsa kiyA
(defrule bit1
(declare (salience 0))
;(declare (salience 6400))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit1   "  ?id "  WodA)" crlf))
)



;Added by Veena (8-04-10)
;His career bit the dust when he lost the job . 
;usake #kEriyara ne #XUla #chAti usane kAma #jaba KoyA
(defrule bit2
(declare (salience 5000))
(id-root ?id bite)
(id-word ?id bit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?obj)
(id-word ?obj dust)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id chAti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit2   "  ?id "  chAti)" crlf))
)

;@@@ Added by Preeti(15-5-14)
;The sculptor chipped away bits of stone. [merriam-webster.com]
;mUrwikAra pawWara ke tukadoM kI katAI_karawA rahA.
(defrule bit7
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit7  "  ?id "  tukadZA)" crlf))
)
