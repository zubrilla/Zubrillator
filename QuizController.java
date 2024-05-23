import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Arrays;
import java.util.List;

@RestController
public class QuizController {

    private final List<Term> terms = Arrays.asList(
            new Term("term1", "перевод1"),
            new Term("term2", "перевод2"),
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
