.class Lorg/apache/xerces/jaxp/datatype/DurationImpl$DurationStream;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/datatype/DurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurationStream"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final lexical:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl$DurationStream;->lexical:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/DurationImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl$DurationStream;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl$DurationStream;->lexical:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
