<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('name', null, [
            'attr' => ["class" => "form-control", "placeholder" => "Please type event name"]
        ])
        ->add('description', TextareaType::class, [
            'attr' => ["class" => "form-control", "placeholder" => "Please write description"]
        ])
        ->add('date_start_time', null, [
            'attr' => ["class" => "form-control", "placeholder" => "Please write date_start_time"],
            "widget" => "single_text"
        ])

        ->add('capacity', null, [
                'attr' => ["class" => "form-control", "placeholder" => "Please write the capacity"]
            ])
        ->add('contact_email', null, [
                'attr' => ["class" => "form-control", "placeholder" => "Please write contact email"]
            ])
        ->add('contact_number', null, [
                'attr' => ["class" => "form-control", "placeholder" => "Please write contact number"]
            ])    
        ->add('address', null, [
                'attr' => ["class" => "form-control", "placeholder" => "Please write the address"]
            ])  
        ->add('URL', null, [
                'attr' => ["class" => "form-control", "placeholder" => "write the events URL"]
            ])
        ->add('image', null, [
                'attr' => ["class" => "form-control", "placeholder" => "write a picture URL"]
            ])
        ->add('type', ChoiceType::class, [
            'label' => '<span style="color: white; font-weight: bold;">Type of Event:</span>',
                'choices' => [
                    'Kultur' => 'Kultur',
                    'Musik' => 'Musik',
                    'Theater' => 'Theater',
                ],
                'attr' => [
                    'class' => 'btn btn-lg btn-primary'
                ],
                'label_html' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
