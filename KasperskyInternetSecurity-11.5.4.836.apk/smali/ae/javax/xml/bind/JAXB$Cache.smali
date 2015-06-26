.class final Lae/javax/xml/bind/JAXB$Cache;
.super Ljava/lang/Object;
.source "JAXB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/javax/xml/bind/JAXB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# instance fields
.field final context:Lae/javax/xml/bind/JAXBContext;

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lae/javax/xml/bind/JAXB$Cache;->type:Ljava/lang/Class;

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lae/javax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    iput-object v0, p0, Lae/javax/xml/bind/JAXB$Cache;->context:Lae/javax/xml/bind/JAXBContext;

    .line 130
    return-void
.end method
