<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name',null,[
            'attr' => ['class' => 'form-control',"placeholder"=>"Please type evetns name!"],
            ])
            
            ->add('startDateTime', DateTimeType::class, [
                'label' => 'Start Date and Time',
                'widget' => 'single_text',
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Select start date and time',
                ],
            ])
            ->add('description',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please type evetns description!"],
            ])
            ->add('capacity',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please type capacity!"],
            ])
            ->add('contactEmail',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"name@example.com"],
            ])
            ->add('contactPhoneNumber',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please type phone number!"],
            ])
            ->add('address',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please type adress!"],
            ])
            ->add('zipCode',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please type zipCode!"],
            ])
            ->add('city',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please type city!"],
            ])
            ->add('url',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please link url!"],
            ])
            ->add('type',null,[
                'attr' => ['class' => 'form-control',"placeholder"=>"Please add events type!"],
            ])
            ->add('picture', FileType::class, [
                'label' => 'Event image',
                'attr' => ['class' => 'form-control',"placeholder"=>"Please select file!"],

                // unmapped means that this field is not associated to any entity property
                'mapped' => false,

                // make it optional so you don't have to re-upload the PDF file
                // every time you edit the Product details
                'required' => true,

                // unmapped fields can't define their validation using attributes
                // in the associated entity, so you can use the PHP constraint classes
                'constraints' => [
                    new File([
                        'maxSize' => '3000k',
                        'mimeTypes' => [
                            'image/png',
                            'image/jpg',
                            'image/jpeg',
                        ],
                        'mimeTypesMessage' => 'Please upload a valid image document',
                    ])
                ],
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
