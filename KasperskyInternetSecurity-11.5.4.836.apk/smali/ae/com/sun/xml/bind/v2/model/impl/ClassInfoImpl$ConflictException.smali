.class final Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;
.super Ljava/lang/Exception;
.source "ClassInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConflictException"
.end annotation


# instance fields
.field final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "one":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 593
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$ConflictException;->annotations:Ljava/util/List;

    .line 594
    return-void
.end method
