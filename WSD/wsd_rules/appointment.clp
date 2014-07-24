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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;The appointment of a new captain for the England team.[oald]
;इंग्लैंड टीम के लिए एक नए कप्तान की नियुक्ति.
;The department wished him success in his new appointment as sales manager.[oald]
;विभाग ने उसे बिक्री प्रबंधक के रूप में उसकी नई नियुक्ति में सफलता की कामना की.
;Asutosh chose Dr. P.C. Ray for appointment to the Palit Chair of Chemistry .[gyananidhi]
;आशुतोष ने रसायन के पालित पीठ में नियुक्ति के लिए प्रोसिडेंसी कॉलिज के प्रोफेसर डाक्टर पी॰ सी॰ राय को चुना
(defrule appointment1
(declare (salience 4000))
(id-root ?id appointment)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-to_saMbanXI  ?id ?)(viSeRya-of_saMbanXI  ?id ?)(viSeRya-as_saMbanXI  ?id ?)(kriyA-to_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appointment.clp 	appointment1   "  ?id "  niyukwI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)27-jan-2014
;I have an appointment with my lawyer.[oald]
;मैं अपने वकील से नियोजित भेंट है.
(defrule appointment2
(declare (salience 4000))
(id-root ?id appointment)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyojiwa_BeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appointment.clp 	appointment2   "  ?id "  niyojiwa_BeMta )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)27-jan-2014
;Sir Alfred Croft offered Asutosh an appointment in the Presidency College, Calcutta. [gyananidhi]
;सार्वजिनक शिक्षा के निदेशक सर एल्प्रेड क्राफ्ट ने आशुतोष के सामने कलकत्ता के प्रेसीडेंसी कालेज में नियुक्ति का प्रस्ताव रखा।
(defrule appointment3
(declare (salience 4000))
(id-root ?id appointment)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2  ?kri ?id)
(id-root ?kri offer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwI_kA_praswAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appointment.clp 	appointment3   "  ?id "  niyukwI_kA_praswAva )" crlf))
)



;***************************DEFAULT RULE*********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)27-jan-2014
(defrule appointment0
(declare (salience 0))
(id-root ?id appointment)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milane_kA_niSciwa_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appointment.clp 	appointment0   "  ?id "  niyukwI )" crlf))
)

;*************************EXAMPLE*****************************************

;Asutosh chose Dr. P.C. Ray for appointment to the Palit Chair of Chemistry .[gyananidhi]
;I've got a dental appointment at 3 o'clock.[oald]
;Do you have an appointment?[oald]
;To make an appointment.[oald]
;Viewing is by appointment only.[oald]

;You should get an appointment for a blood test.[oald]
;She made an appointment for her son to see the doctor.[oald]
;Her recent appointment to the position.[oald]
;His appointment as principal.[oald]
;The appointment of a new captain for the England team.[oald]
;A permanent appointment.[oald]
;The department wished him success in his new appointment as sales manager.[oald]

