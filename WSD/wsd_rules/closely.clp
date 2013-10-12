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

;We are working closely with the police.
;हम पुलिस के साथ मिलकर काम कर रहे हैं.
;We are all working closely with each other.
;हम सभी एक दूसरे के साथ मिलकर काम कर रहे हैं.
(defrule closely1
(declare (salience 3700))
(id-root ?id closely)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(id-root ?id1 work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  closely.clp 	closely1   "  ?id "  milakara )" crlf))
)


;listen closely. 
;ध्यानपूर्वक सुनो.
(defrule closely2
(declare (salience 3500))
(id-root ?id closely)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(id-word ?id1 listen)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAnapUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  closely.clp 	closely2   "  ?id "  XyAnapUrvaka )" crlf))
)


;------------------- Default Rule -------------------------
;The two events are closely connected. 
;दो घटनायें बारीकी से जुड़ी हैं।
;Pollution levels are closely monitored.
;प्रदूषण के स्तर को बारीकी से निगरानी कर रहे हैं.
;Both politicians have been closely associated with the movement for some time. 
;कुछ समय से दोनों नेता बारीकी से आंदोलन के साथ जुड़े हुए है.
;Inspectors will examine the accounts very closely.
;निरीक्षक बहुत बारीकी से खातों की जांच करेंगे.
(defrule closely3
(declare (salience 0))
(id-root ?id closely)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArIkI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  closely.clp  closely3   "  ?id "  bArIkI_se )" crlf))
)

;********************************** EXAMPLES **********************************

;English and German are closely related.
;अंग्रेजी और जर्मन निकट से संबंधित हैं.
;The movement of information across the border was closely regulated.
;A closely held business.(CLOSELY-HELD ===> owned by a relatively few shareholders).

;*******************************  TO BE RESOLVED LATER *******************************


;She left the room, closely followed by her husband.
;The Swiss boat is in the lead, followed closely by the French.

