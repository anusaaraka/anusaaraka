;########################################################################`
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################`
;@@@ Added by jagriti(18.1.2014)
;The Prime Minister will participate in the Non-Aligned Movement's summit.
;प्रधानमंत्री गुट निरपेक्ष आंदोलन के शिखर सम्मेलन में भाग लेंगे.
;Attend a summit in Washington.
;वाशिंग्टन के शिखर सम्मेलन में उपस्थित होइए .  
(defrule summit0
(declare (salience 5000))
(id-root ?id summit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-in_saMbanXI ?id1 ?id)(kriyA-object ?id1 ?id))
(id-root ?id1 participate|attend|present)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiKara_sammelana ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  summit.clp 	summit0  "  ?id "  SiKara_sammelana)" crlf))
)

;@@@ Added by jagriti(18.1.2014)
;The summit of his career.
;उसके कैरियर की पराकाष्ठा . 
;The summit of perfection.
;सम्पूर्णता की पराकाष्ठा . 
;At fourty he was at the summit of his fame.
;चालीस साल में वह अपनी प्रसिद्धि की पराकाष्ठा पर पहुंच गया था . 

(defrule summit1
(declare (salience 4900))
(id-root ?id summit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 fame|career|perfection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAkARTA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  summit.clp 	summit1  "  ?id "  parAkARTA)" crlf))
)

;.....Default rule....
;@@@ Added by jagriti(18.1.2014)
;Everest is the highest summit of the Himalayas.
;एवरेस्ट हिमालय का सबसे अधिक ऊँचा शिखर है . 
(defrule summit2
(declare (salience 100))
(id-root ?id summit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiKara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  summit.clp 	summit2  "  ?id "  SiKara)" crlf))
)
