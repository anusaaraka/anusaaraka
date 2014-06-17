;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;He lost his balance and tumbled over.[cambridge]
;उसने उसका संतुलन खोया और गिर गया .
;I struggled to keep my balance on my new skates.[oald]
;मैं अपने नए स्केट्स पर मेरा संतुलन बनाये रखने के लिए संघर्ष किया.
(defrule balance2
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-object  ?id1 ?id))
(id-root ?id1 keep|lose|mind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwulana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance2   "  ?id "  saMwulana )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;His lack of experience was balanced by a willingness to learn.[oald]
;उसके सीखने की इच्छा द्वारा उसके अनुभव की कमी की पूर्ती हुयी . 
(defrule balance3
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrwI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance3   "  ?id "  pUrwI_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;The cost of obtaining legal advice needs to be balanced against its benefits.[oald]
;कानूनी सलाह प्राप्त करने की कीमत को उसके लाभ के साथ तोलने की जरूरत है .  
(defrule balance4
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance4   "  ?id "  wola )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;The long-term future of the space programme hangs in the balance.[oald]
;अंतरिक्ष कार्यक्रम का दीर्घकालिक भविष्य अधर में लटका हुआ है/अनिश्चित है.
(defrule balance5
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(id-root ?kri hang)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance5   "  ?id "  aXara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;I was thrown off balance by the sudden gust of wind.[oald]
;मैं हवा के अचानक झोंके से अस्थिर हो गया था /लड़खड़ा गया था. 
(defrule balance6
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri throw)
(id-word =(+ ?kri 1) off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?kri 1) ?kri asWira_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " balance.clp 	balance6  "  ?id "  " (+ ?kri 1) " " ?kri "   asWira_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;The balance of $500 must be paid within 90 days.[oald]
;$500 की शेष राशी 90 दिनों में देनी होगी . 
(defrule balance7
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-saMKyA_viSeRaNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa_rASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance7   "  ?id "  SeRa_rASI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;The senator was clearly caught off balance by the unexpected question.[oald]
;सीनेटर स्पष्ट रूप से अप्रत्याशित प्रश्न द्वारा परेशान हो गया था. 
(defrule balance8
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri catch)
(id-word =(+ ?kri 1) off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?kri 1) ?kri pareSAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " balance.clp 	balance8  "  ?id "  " (+ ?kri 1) " " ?kri "   pareSAna_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;She balanced the cup on her knee.[oald]
;उसने कप को घुटने पर संतुलित रखा 
(defrule balance9
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id1 ?)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwuliwa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance9   "  ?id "  saMwuliwa_raKa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 25-Feb-2014
;The balance of an account.[shiksharti kosh]
;हिसाब का बकाया
(defrule balance10
(declare (salience 3000))
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 account)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance10   "  ?id "  bakAyA )" crlf))
)


;*********************DEFAULT RULES*****************************

(defrule balance0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warAjZU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance0   "  ?id "  warAjZU )" crlf))
)

;"balance","N","1.warAjZU"
;One should always buy only ISI marked balance.
;
(defrule balance1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id balance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwulana_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  balance.clp 	balance1   "  ?id "  saMwulana_raKa )" crlf))
)

;"balance","V","1.saMwulana_raKa"
;--"2.saMwulana_raKanA"
;Students should be taught to balance their time between games && studies.
;--"3.bakAyA_nikAlanA"
;Our accountant has not yet found the balance of our company's annual account.
;
