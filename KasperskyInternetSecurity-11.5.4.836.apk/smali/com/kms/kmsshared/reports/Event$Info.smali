.class public Lcom/kms/kmsshared/reports/Event$Info;
.super Lcom/kms/kmsshared/reports/Event;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I[Ljava/io/Serializable;I)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/kms/kmsshared/reports/Event;-><init>(I[Ljava/io/Serializable;I)V

    .line 102
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 98
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 93
    return-void
.end method


# virtual methods
.method public getSeverity()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
