.class public interface abstract annotation Lae/javax/xml/bind/annotation/XmlAccessorOrder;
.super Ljava/lang/Object;
.source "XmlAccessorOrder.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lae/javax/xml/bind/annotation/XmlAccessorOrder;
        value = .enum Lae/javax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lae/javax/xml/bind/annotation/XmlAccessOrder;
.end method
