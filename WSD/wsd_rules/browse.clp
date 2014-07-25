
;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;She browsed the shelves for something interesting to read.[oald]
;उसने कुछ रोचक पढ़ने  के लिये शेल्फ पर निगाहें दौडायीं
(defrule browse2
(declare (salience 5000))
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-for_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigAheM_xOdZA))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse2   "  ?id "  nigAheM_xOdZA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " browse.clp 	browse2    "  ?id " para )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;I found the article while I was browsing through some old magazines.[oald]
;मुझे कुछ पुरानी पत्रिकाओं  के पृष्ठ पलटते समय यह लेख मिला. 
(defrule browse3
(declare (salience 5000))
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id ?id1)
(id-root ?id1 book|magazine|newspaper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqRTa_palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse3   "  ?id "  pqRTa_palata )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;I had a browse through the books on his desk.[cambridge]
;मैंने उसकी मेज पर पड़ी किताबों को देखा 
(defrule browse4
(declare (salience 5000))
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-through_saMbanXI  ?id ?id1)
(id-root ?id1 book|magazine|newspaper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse4   "  ?id "  xeKa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;Deer were browsing on grass under the trees. [cambridge]
;हिरण पेड़ के नीचे घाँस पर चर रहे थे 
;Deer browse on spruce and fir seedlings.[coca]
;हिरण फ़र वृक्ष और देवदार के पौधों पर चरते हैं
(defrule browse5
(declare (salience 5000))
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse5   "  ?id "  cara )" crlf))
)

;*************************DEFAULT RULES**********************************

;$$$ Modified by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;Modified the meaning from 'iXara' to 'xeKa'
;You are welcome to come in and browse.[oald]
;आपका अन्दर आकर देखने के लिये स्वागत है
(defrule browse0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse0   "  ?id "  xeKa )" crlf))
)

;$$$ Modified by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;We went for a browse around an antique shop. [cambridge]
;हम एक प्राचीन वस्तुओं की दुकान में समान देखने गये.
(defrule browse1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse1   "  ?id "  sAmAna_xeKa )" crlf))
)

;"browse","N","1.pqRTa_palatAnA"
;I had a browse among the second-hand books.
;
;
