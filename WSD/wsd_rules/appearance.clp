;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@  Added by Garima
;He doesn't bother much about his appearance.[oald]
;वह अपने प्रकटन को लेकर जयादा चिंतित नहीं होता है
(defrule appearance1
(declare(salience 4000))
(id-root ?id appearance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI  ?id1 ?id)
(id-last_word ?id appearance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id veSaBURA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appearance.clp 	appearance1   "  ?id "  veSaBURA )" crlf))
)

;@@@  Added by Garima
;Judging by appearances can be misleading.[oald]
;किसी की वेशभूषा को देख कर निर्णय लेना गुमराह कर सकता है
(defrule appearance2
(declare(salience 4000))
(id-root ?id appearance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id1 ?id)
(id-root ?id1 judge)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id veSaBURA_ko_xeKa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appearance.clp 	appearance2   "  ?id "  veSaBURA_ko_xeKa_kara )" crlf))
)

;@@@  Added by Garima
;I don't want to go to the party, but I suppose I'd better put in an appearance.[oald]
;मैं पार्टी में जाना नहीं चाहता हूँ, परन्तु बेहतर होगा कि मैं थोड़े समय के लिये उपस्थिति दे आऊँ. 
(defrule appearance3
(declare(salience 4000))
(id-root ?id appearance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-word ?id1 put)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodZe_samaya_ke_liye_upasWiwi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appearance.clp 	appearance3   "  ?id "  WodZe_samaya_ke_liye_upasWiwi_xe )" crlf))
)

;***************************************** DEFAULT RULE **********************************************************
;@@@  Added by Garima
;The early appearance of daffodils in spring.[oald]
;स्प्रिंग में डैफोडिल का प्रारम्भिक दिखाई देना . 
;The appearance of organic vegetables in the supermarkets.[oald]
;सुपर बाजारों में इंद्रिय सम्बन्धी वनस्पतियों का दिखाई देना . 
(defrule appearance4
(id-root ?id appearance)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appearance.clp 	appearance4   "  ?id "  xiKAI_xe )" crlf))
)

;@@@  Added by Garima
(defrule appearance0
(declare(salience 0))
(id-root ?id appearance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upasWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appearance.clp 	appearance0   "  ?id "  upasWiwi )" crlf))
)

;**************************************************************** EXAMPLES ******************************************************************

;His new book will be appearing in the spring.
;It was too late to prevent the story from appearing in the national newspapers.
;These allegations appear in a forthcoming documentary.
;He suddenly appeared in the doorway.
;We'd been in the house a month when dark stains started appearing on the wall.
;His name appears in the film credits for lighting.
;If she hasn't appeared by ten o'clock I'm going without her.
;The film, currently in the States, will be appearing on our screens later this year.
;I've noticed that smaller cars are starting to appear again.
;Both women will be appearing before magistrates later this week.
;You've got to appear calm in an interview even if you're terrified underneath.
;To people who don't know him he probably appears to be rather unfriendly.
;Things aren't always what they appear to be .
;She appears to actually like the man, which I find incredible.
;There appears to be some mistake.
;It appears that she left the party alone.
;It appears to me that we need to make some changes.
;Dave Gilmore is currently appearing as Widow Twanky in the Arts Theatre's production of "Puss in Boots".
;She appears briefly in the new Bond film.
;Ms Hawley was appearing for the defence.
;It was his first appearance on television/television appearance as president.
;She will be making a public appearance, signing copies of her latest novel.
;This was the defendant's third court appearance for the same offence.
;He made his first stage/TV appearance at the age of six.
;I didn't really want to go to the party, but I thought I'd better put in an appearance.
