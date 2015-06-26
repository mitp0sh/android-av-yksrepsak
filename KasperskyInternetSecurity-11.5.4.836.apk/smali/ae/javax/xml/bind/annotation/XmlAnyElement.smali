.class public interface abstract annotation Lae/javax/xml/bind/annotation/XmlAnyElement;
.super Ljava/lang/Object;
.source "XmlAnyElement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lae/javax/xml/bind/annotation/XmlAnyElement;
        lax = false
        value = Lae/javax/xml/bind/annotation/W3CDomHandler;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract lax()Z
.end method

.method public abstract value()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/DomHandler;",
            ">;"
        }
    .end annotation
.end method
