.class public Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
.super Lae/javax/xml/bind/JAXBException;
.source "IllegalAnnotationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final pos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/Location;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "src"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->build([Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->pos:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "src1"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .param p3, "src2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->build([Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->pos:Ljava/util/List;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "src"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->build([Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->pos:Ljava/util/List;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 74
    invoke-static {p2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->cast(Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "src1"    # Ljava/lang/annotation/Annotation;
    .param p3, "src2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 87
    invoke-static {p2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->cast(Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "src1"    # Ljava/lang/annotation/Annotation;
    .param p3, "src2"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 83
    invoke-static {p2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->cast(Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v0

    invoke-static {p3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->cast(Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 84
    return-void
.end method

.method private varargs build([Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/util/List;
    .locals 7
    .param p1, "srcs"    # [Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/Location;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/Location;>;>;"
    move-object v0, p1

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 105
    .local v2, "l":Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    if-eqz v2, :cond_0

    .line 106
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->convert(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/util/List;

    move-result-object v4

    .line 107
    .local v4, "ll":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/Location;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v4    # "ll":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/Location;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "l":Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method private static cast(Ljava/lang/annotation/Annotation;)Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .locals 1
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 96
    instance-of v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    if-eqz v0, :cond_0

    .line 97
    check-cast p0, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .line 99
    .end local p0    # "a":Ljava/lang/annotation/Annotation;
    :goto_0
    return-object p0

    .restart local p0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private convert(Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/util/List;
    .locals 2
    .param p1, "src"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/Location;>;"
    :goto_1
    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;->getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;->getUpstream()Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    move-result-object p1

    goto :goto_1

    .line 123
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getSourcePos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/Location;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->pos:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;->pos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 195
    .local v3, "locs":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/Location;>;"
    const-string v5, "\n\tthis problem is related to the following location:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/Location;

    .line 197
    .local v2, "loc":Lae/com/sun/xml/bind/v2/runtime/Location;
    const-string v5, "\n\t\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "loc":Lae/com/sun/xml/bind/v2/runtime/Location;
    .end local v3    # "locs":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/Location;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
