<?php

namespace App\services;

class MathService
{
    public function add($numbers)
    {
        return array_sum($numbers);
    }
    public function product($numbers)
    {
        return array_product($numbers);
    }
}
