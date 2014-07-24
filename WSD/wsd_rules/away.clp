
;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;So saying the angel spread its wings and flew away.[gyananidhi]
;यह कह कर फरिश्ता अपने पंख फैलाकर आकाश में उड़ गया।
(defrule away2
(declare (salience 3000))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id) ; Added this relation by Garima
(id-word ?kri flew) ; Added this fact by Garima
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away2   "  ?id "  - )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;There were ten children away yesterday.[oald]
;कल दस बच्चे अनुपस्थित थे
(defrule away3
(declare (salience 3000))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(id-root ?kri be)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anupasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away3   "  ?id "  anupasWiwa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;She was still writing away furiously when the bell went.[oald]
;वह कुपित तरह से लगातार अभी भी लिख रही थी जब घण्टा बजा . 
;They were soon chatting away like old friends.[oald]
;वे जल्द ही पुराने मित्रों की तरह लगातार गपशप कर रहे थे . 
(defrule away4
(declare (salience 3000))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-root ?kri write|chat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away4   "  ?id "  lagAwAra )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 06-jan-2014
;The water boiled away.[oald]
;पानी उबल कर गायब हो गया
(defrule away5
(declare (salience 3000))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-word ?kri boiled)
(id-last_word ?id away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri ubala_kara_gAyaba_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " away.clp	away5  "  ?id "  " ?kri "  ubala_kara_gAyaba_ho  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-jan-2014
;He batted the wasp away.[oald]
;उसने ततैया पर प्रहार कर के दूर भगाया
(defrule away6
(declare (salience 3000))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(kriyA-object  ?kri =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_BagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away6   "  ?id "  xUra_BagA )" crlf))
)


;***************************DEFAULT RULES************************************


;$$$ commented by Garima Singh as both the rules are same(away0 and away1)
;(defrule away0
;(declare (salience 0)); salience reduced by Garima Singh
;(id-root ?id away)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adverb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id -))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away0   "  ?id "  - )" crlf)))

(defrule away1
(declare (salience 0))
(id-root ?id away)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  away.clp 	away1   "  ?id "  xUra )" crlf))
)

;"away","Adv","1.xUra"
;My birthday is only a week away from today.
;merA janmaxina Aja se kevala eka sapwAha xUra hE.
;--"2.bAhara"
;Preeti is away on vacation for one month.
;prIwi CuttiyoM meM eka mahIne ke lie bAhara gaI huI hE.
;--"3.lagAwAra"
;They worked away for three days to get it finished.
;unhone use samApwa karane ke lie lagAwAra wIna xinOM waka kAma kiyA.
;
;
;LEVEL 
;Headword : away
;
;Examples --
;
;"away","Adv","1.xUrI_para"
;Keep your toys away from the dog.
;apane KilOnoM ko kUwwe se xUrI para raKo.
;--"2.bAhara"  <--xUra
;She is away on vacation for one month
;vaha CuttiyoM meM eka mahIneM ke lie bAhara gaI hE 
;--"3.lagAwAra" 
;They worked away all day
;ve lagAwAra sArA xina kAma kie 
;   
;sUwra : xUrI_para/lagAwAra
;
