
(defrule raise0
(declare (salience 5000))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise0   "  ?id "  vqxXi )" crlf))
)

(defrule raise1
(declare (salience 4900))
(id-root ?id raise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raise.clp 	raise1   "  ?id "  Upara_uTA )" crlf))
)

;"raise","VT","1.Upara_uTAnA"
;Please don't raise a cloud of dust.  
;--"2.KadZA_karanA"    
;Go && raise a fallen child.
;--"3.vqxXi_karanA_/baDZAnA"   
;She raised her offer to Rs.3000.   
;--"4.ekawra_karanA"  
;Why don't you raise funds for charity.  
;--"5.uwpanna_karanA"   
;She told us all her jokes,but she couldn't even raise a smile. 
;--"6.badZA_karanA"   
;My parents died when I was young so I was raised by my aunt. 
;--"7.GqNA_prakata_karanA"   
;There were many raised eyebrows when people saw him handcuffed. 
;--"8.prasanna_honA"    
;My victory in the final raised my spirits.
;--"9.viroXa_karanA"   
;The opposition raised its voice against the women's bill. 
;
;LEVEL 
;
;
;                `raise' sUwra (nibanXa)
;                -------           
;
;`raise' Sabxa ke viviXa prayoga--
;-------------------------   
; 
;"raise","VT","1.Upara_uTAnA"    
;                  ---- < Upara uTAnA`
;Please don't raise a cloud of dust.
;--"2.KadZA_karanA"    
;                  ---- < Upara uTAnA`
;Go && raise a fallen child.
;--"3.vqxXi_karanA_/baDZAnA"
;                  ---- < Upara uTAnA`
;She raised her offer to Rs.3000.
;--"4.ekawra_karanA" 
;                  ---- < eka se aXika karanA < -- vqxXi karanA < -- Upara uTAnA`
;Why don't you raise funds for charity.
;--"5.uwpanna_karanA"
;                  ---- < vqxXi karanA <-- Upara uTAnA`
;She told us all her jokes,but she couldn't even raise a smile.
;--"6.badZA_karanA"   
;                  ---- < Upara uTAnA`
;My parents died when I was young so I was raised by my aunt.
;--"7.GqNA_prakata_karanA" 
;                  ---- < kisI cIja kA Upara uTanA <-- Upara uTAnA`
;There were many raised eyebrows when people saw him handcuffed.
;--"8.uwsAha_baDAnA" 
;                  ---- < uwsAha kI vqxXi karanA <-- Upara uTAnA` 
;My victory in the final raised my spirits.
;--"9.viroXa_karanA"   
;                  ---- < AvAja ko (Upara)uTAnA <-- Upara uTAnA`
;The opposition raised its voice against the women's bill.
;
;"raise (US=rise)","N","1.baDZowarI"
;                  ---- < vqxXi karanA <-- Upara uTAnA`
;Should I ask my boss for a rise/raise?,a five per cent pay rise/raise.
;-------------------------------------------------------------------------
;
;
;sUwra : vqxXi[<Upara_uTAnA`]
;
;----------------
;
;   aMgrejI ke isa Sabxa ke viBinna prayoga hinxI meM xeKe jA sakawe hEM, Upara xiye
;gaye alaga-alaga vAkyoM xvArA . ina saBI vAkyoM meM eka `Upara uTAne kA BAva'
;sAmAnya hEM . hinxI meM BI isa `Upara uTane ke BAva' ke viviXa sanxarBa prayukwa
;hEM . Upara ke vAkyoM xvArA isa waWya ko samaJA jA sakawA hE . tippaNiyoM se
;yaha Ora BI spaRta hE . kuCa ke vivaraNa yahAz xeKawe hEM--
;
;-- `ekawra karanA' . isa waraha ke BAvArWavAle vAkya ke mUla meM Upara uTAne kA BAva hE . 
;Upara uTAnA arWAw vqxXi karanA . vqxXi hone kI samBAvanA ekawriwa karane ke kArya 
;meM nihiwa hE . isa waraha isakA arWa-viswAra samaJA jA sakawA hE . 
;
;-- `GqNA prakata karanA' . isakA BAva kisI SArIrika aBivyakwi ke Upara uTAne se 
;AyA huA hE . jaba koI vyakwi GqNA ke BAva ko prakata karanA cAhawA hE wo vaha BOMhoM
;kA caDAnA avaSya karawA hE . isase yaha arWa-viswAra samaJA jA sakawA hE . 
;
;-- `viroXa karanA' . hinxI meM BI isa prakAra kA prayoga xeKA jA sakawA hE . bahuwa 
;prasaMgoM meM jaba viroXa prakata karane ke BAva ko kahanA howA hE wo `AvAja uTAne'
;yA `AvAja UzcA karane' ke kriyArUpa kA prayoga kiyA jAwA hE .
;
;-- anya prayoga tippaNiyoM se saralawayA sajaJe jA sakawe hEM .  
;
;
