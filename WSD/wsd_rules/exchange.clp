;@@@ Added by Pramila(BU) on 08-02-2014
;I went to the telephone exchange.     ;oald
;मैं टेलीफोन केन्द्र गया.
(defrule exchange0
(declare (salience 4500))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kenxra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange0   "  ?id "  kenxra )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;There was a brief exchange between the two leaders.     ;cald
;दो नेताओं के बीच संक्षिप्त वार्तालाप हुई.
;There was only time for a brief exchange.    ;oald
;केवल संक्षिप्त वार्तालाप के लिए समय है.
(defrule exchange1
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-between_saMbanXI  ?id ?)(viSeRya-for_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vArwAlApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange1   "  ?id "  vArwAlApa )" crlf))
)


;@@@ Added by Pramila(BU) on 08-02-2014
;They were given food and shelter in exchange for work.     ;cald
;उन्हें काम के बदले में भोजन और आश्रय दिया गया.
;Would you like my old TV in exchange for this camera?   ;oald
;क्या आप इस कैमरे के बदले में मेरा पुराने टीवी चाहेंगे?
(defrule exchange2
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-in_saMbanXI  ? ?id)(kriyA-in_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange2   "  ?id "  baxalA )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;She proposes an exchange of contracts at two o'clock.     ;cald
;उसने दो बजे  संविदा-पत्रों के आदान-प्रदान का प्रस्ताव रखा.
(defrule exchange3
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-at_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxAna-praxAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange3   "  ?id "  AxAna-praxAna )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;Several people were killed during the exchange of gunfire.     ;cald
;कई लोग गोलाबारी में मारे गए.
(defrule exchange4
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 gunfire|fire)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) ?id1 golAbArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " exchange.clp	exchange4  "  ?id "  "(+ ?id 1) ?id1 " golAbArI  )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;Are you going on the French exchange this year?     ;cald
;क्या तुम इस साल फ्रैंच छात्र-विनिमय पर जा रहे हो ?
(defrule exchange5
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAwra-vinimaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange5   "  ?id "  CAwra-vinimaya )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;The Prime Minister was involved in a heated exchange with opposition MPs.   ;oald
;प्रधानमंत्री विपक्षी सांसदों के साथ गंभीर वार्तालाप में शामिल थे.
(defrule exchange6
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ? ?id)
(viSeRya-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vArwAlApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange6   "  ?id "  vArwAlApa )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;Where can I find the best rate of exchange?  ;oald
;मुझे सबसे अच्छी विनिमय की दर कहाँ से  मिल सकती है?
;Where can I find the best exchange rate?   ;oald
;मुझे सबसे अच्छी विनिमय दर कहाँ से मिल सकती है??
(defrule exchange7
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)(viSeRya-of_saMbanXI  ?id1 ?id))
(id-root ?id1 rate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vinimaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange7   "  ?id "  vinimaya )" crlf))
)

;@@@ Added by Pramila(BU) on 08-02-2014
;Our school does an exchange with a school in France.  ;oald
;हमारा स्कूल फ्रांस के स्कूल के साथ छात्र-विनिमय करता है.
(defrule exchange8
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(viSeRya-in_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAwra-vinimaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange8   "  ?id "  CAwra-vinimaya )" crlf))
)

;---------------- Default rules------------------------------------
(defrule exchange9
(declare (salience 100))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA_baxalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange9   "  ?id "  axalA_baxalA )" crlf))
)

;"exchange","N","1.axalA_baxalA"
;Four militants were released in exchange of 154 passengers on board the IA plane 
;
(defrule exchange10
(declare (salience 100))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA_baxalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange10   "  ?id "  axalA_baxalA_kara )" crlf))
)

;"exchange","VT","1.axalA_baxalA_karanA"
;Four militants were exchanged for 154 passengers on board the IA plane.
;



