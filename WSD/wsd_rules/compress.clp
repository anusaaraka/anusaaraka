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

;If you press a coiled spring, the spring is compressed by the force of your hand.
;yaxi Apa kisI kuNdaliwa kamAnI ko apane hAWoM se xabAez wo vaha kamAnI Apake hAWoM ke bala se xaba jAwI hE.
(defrule compress1
(declare (salience 3500))
(id-root ?id compress)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compress.clp 	compress1   "  ?id "  xaba )" crlf))
)

;Size of data reduces when data is compressed. 
;detA kA AkAra GatAwA hE jaba detA sampIdiwa kiyA jAwA hE.
;Please compress the image. 
;kqpayA prawibimba sampIdiwa kIjie.
(defrule compress2
(declare (salience 3700))
(id-root ?id compress)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 datum|picture|image|file)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampIdZiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compress.clp 	compress2   "  ?id "  sampIdZiwa_kara )" crlf))
)
;---------------------------- Default Rules ----------------------------
;a cold compress.
;eka TaNdI pattI.
(defrule compress3
(id-root ?id compress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compress.clp 	compress3   "  ?id "  pattI )" crlf))
)

;The weight of the skiers compresses the snow and makes it solid. 
;skI_karane vAloM kA BAra baraPa ko xabAwA hE Ora use GanIBUwa banAwA hE.
;The spring is compressed by him.
;kamAnI usake xvArA xabAI gayI hE.
(defrule compress4
(id-root ?id compress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compress.clp         compress4   "  ?id "  xabA )" crlf))
)

;****************************************** EXAMPLES ********************************************************

;Compress straw into blocks for burning.
;The spring is compressed by him.
;The weight of the skiers compresses the snow and makes it solid.
;Firmly compress the soil in the pot so that the plant is secure. 
;compressed air.
;If you press a coiled spring, the spring is compressed by the force of your hand. 
;A cold compress.
;The compressed spring in turn exerts a force on your hand and you can feel it. 
;The data is being compressed.
;Please compress the data.
;Size of data reduces when data is compressed.
;On comression, size of data reduces.

