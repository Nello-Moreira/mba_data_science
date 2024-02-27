class AnaliseEstatistica():
    """
    Classe criada para exercitar o conceito de abstração
    de orientação a objetos
    """

    def __init__(self, listaDeSalarios: list[float]):
        self.listaDeSalarios = sorted(listaDeSalarios)

    def media(self) -> float:
        sum_of_salaries: float = 0
        for salary in self.listaDeSalarios:
            sum_of_salaries += salary
        return sum_of_salaries / len(self.listaDeSalarios)

    def mediana(self) -> float:
        even_number_of_salaries = len(self.listaDeSalarios) % 2 == 0
        if even_number_of_salaries:
            before_half = self.listaDeSalarios[len(
                self.listaDeSalarios) // 2 - 1]
            after_half = self.listaDeSalarios[len(self.listaDeSalarios) // 2]
            return (before_half + after_half) / 2
        return self.listaDeSalarios[len(self.listaDeSalarios) // 2]


class AnaliseEstatisticaExtendida(AnaliseEstatistica):
    """
    Classe criada para exercitar o conceito de polimorfismo
    de orientação a objetos
    """

    def __init__(self, listaDeSalarios: list[float]):
        super().__init__(listaDeSalarios)

    def desvioPadrao(self):
        average = self.media()
        power_of_deviations = [(x-average)**2 for x in self.listaDeSalarios]
        return (sum(power_of_deviations) / len(self.listaDeSalarios))**0.5

    def minimo(self):
        result = self.listaDeSalarios[0]
        for salary in self.listaDeSalarios:
            if salary < result:
                result = salary
        return result

    def maximo(self):
        result = self.listaDeSalarios[0]
        for salary in self.listaDeSalarios:
            if salary > result:
                result = salary
        return result
