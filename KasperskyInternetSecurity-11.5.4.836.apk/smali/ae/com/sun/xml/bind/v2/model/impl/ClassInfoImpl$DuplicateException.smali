.class final Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;
.super Ljava/lang/Exception;
.source "ClassInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuplicateException"
.end annotation


# instance fields
.field final a1:Ljava/lang/annotation/Annotation;

.field final a2:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .param p1, "a1"    # Ljava/lang/annotation/Annotation;
    .param p2, "a2"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 600
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;->a1:Ljava/lang/annotation/Annotation;

    .line 601
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$DuplicateException;->a2:Ljava/lang/annotation/Annotation;

    .line 602
    return-void
.end method
