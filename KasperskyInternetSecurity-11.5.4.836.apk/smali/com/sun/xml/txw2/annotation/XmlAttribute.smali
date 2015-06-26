.class public interface abstract annotation Lcom/sun/xml/txw2/annotation/XmlAttribute;
.super Ljava/lang/Object;
.source "XmlAttribute.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sun/xml/txw2/annotation/XmlAttribute;
        ns = ""
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract ns()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method
