.class public interface abstract annotation Lae/javax/xml/bind/annotation/XmlSchema;
.super Ljava/lang/Object;
.source "XmlSchema.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lae/javax/xml/bind/annotation/XmlSchema;
        attributeFormDefault = .enum Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;
        elementFormDefault = .enum Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;
        location = "##generate"
        namespace = ""
        xmlns = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final NO_LOCATION:Ljava/lang/String; = "##generate"


# virtual methods
.method public abstract attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;
.end method

.method public abstract elementFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;
.end method

.method public abstract location()Ljava/lang/String;
.end method

.method public abstract namespace()Ljava/lang/String;
.end method

.method public abstract xmlns()[Lae/javax/xml/bind/annotation/XmlNs;
.end method
