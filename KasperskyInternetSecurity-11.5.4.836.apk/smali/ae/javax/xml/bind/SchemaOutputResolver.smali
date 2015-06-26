.class public abstract Lae/javax/xml/bind/SchemaOutputResolver;
.super Ljava/lang/Object;
.source "SchemaOutputResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createOutput(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
