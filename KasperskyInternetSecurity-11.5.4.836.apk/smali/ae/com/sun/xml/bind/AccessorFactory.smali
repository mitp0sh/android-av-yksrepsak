.class public interface abstract Lae/com/sun/xml/bind/AccessorFactory;
.super Ljava/lang/Object;
.source "AccessorFactory.java"


# virtual methods
.method public abstract createFieldAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;Z)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract createPropertyAccessor(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method
