import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Arrays;
import java.util.List;

@RestController
public class QuizController {

    private final List<Term> terms = Arrays.asList(
            new Term("ala ae f", "крыло"),
new Term("apertura ae f", "отверстие"),
new Term("arteria ae f", "артерия"),
new Term("aqua ae f", "вода"),
new Term("bucca ae f", "щека"),
new Term("bursa ae f", "сумка"),
new Term("clavicula ae f", "ключица"),
new Term("concha ae f", "раковина"),
new Term("crista ae f", "гребень"),
new Term("dentura ae f", "ряд зубов"),
new Term("eminentia ae f", "возвышение"),
new Term("fibula ae f", "малая берцовая кость"),
new Term("fossa ae f", "ямка"),
new Term("fractura ae f", "перелом"),
new Term("gingiva ae f", "десна"),
new Term("glandula ae f", "железа"),
new Term("gutta ae f", "капля"),
new Term("incisura ae f", "вырезка"),
new Term("lamina ae f", "пластинка"),
new Term("linea ae f", "линия"),
new Term("lingua ae f", "язык"),
new Term("mandibula ae f", "нижняя челюсть"),
new Term("maxilla ae f", "верхняя челюсть"),
new Term("medulla ae f", "спинной мозг"),
new Term("papilla ae f", "сосочек"),
new Term("plica ae f", "складка"),
new Term("pulpa ae f", "пульпа"),
new Term("pustula ae f", "гнойничок"),
new Term("rima ae f", "щель"),
new Term("saliva ae f", "слюна"),

            // Добавьте остальные термины и их переводы
    );

    @GetMapping("/terms")
    public List<Term> getTerms() {
        return terms;
    }

    static class Term {
        private String term;
        private String translation;

        public Term(String term, String translation) {
            this.term = term;
            this.translation = translation;
        }

        public String getTerm() {
            return term;
        }

        public String getTranslation() {
            return translation;
        }
    }
}
