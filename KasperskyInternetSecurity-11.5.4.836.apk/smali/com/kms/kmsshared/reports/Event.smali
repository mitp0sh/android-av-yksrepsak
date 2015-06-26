.class public abstract Lcom/kms/kmsshared/reports/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x440d4492fe6977e7L


# instance fields
.field protected mArguments:[Ljava/io/Serializable;

.field protected mDetailsResID:I

.field private mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

.field protected mTitleResID:I


# direct methods
.method public constructor <init>(I[Ljava/io/Serializable;I)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/kms/kmsshared/reports/Event;->mTitleResID:I

    .line 15
    iput v0, p0, Lcom/kms/kmsshared/reports/Event;->mDetailsResID:I

    .line 27
    new-instance v0, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    .line 28
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0, p1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setID(I)V

    .line 29
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setTime(J)V

    .line 30
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setSync(Z)V

    .line 31
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0, p3}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setOrdinal(I)V

    .line 32
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {p0}, Lcom/kms/kmsshared/reports/Event;->getSeverity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setSeverity(I)V

    .line 33
    iput-object p2, p0, Lcom/kms/kmsshared/reports/Event;->mArguments:[Ljava/io/Serializable;

    .line 34
    return-void
.end method

.method public static varargs getDetailsForEvent(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-static {p0}, LrY;->b(I)I

    move-result v0

    .line 65
    if-lez v0, :cond_0

    .line 66
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 24
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 19
    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v0

    iget-object v1, p0, Lcom/kms/kmsshared/reports/Event;->mArguments:[Ljava/io/Serializable;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Event;->getDetailsForEvent(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/kms/kmsshared/reports/AKEvents$EventHeader;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v0

    if-ltz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {p0}, Lcom/kms/kmsshared/reports/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setName(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {p0}, Lcom/kms/kmsshared/reports/Event;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->setDescription(Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v0

    return v0
.end method

.method public abstract getSeverity()I
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/kms/kmsshared/reports/Event;->mHeader:Lcom/kms/kmsshared/reports/AKEvents$EventHeader;

    invoke-virtual {v1}, Lcom/kms/kmsshared/reports/AKEvents$EventHeader;->getID()I

    move-result v1

    invoke-static {v1}, LrY;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public param(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mArguments:[Ljava/io/Serializable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mArguments:[Ljava/io/Serializable;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mArguments:[Ljava/io/Serializable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->mArguments:[Ljava/io/Serializable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDetails(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/kms/kmsshared/reports/Event;->mDetailsResID:I

    .line 73
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/kms/kmsshared/reports/Event;->mTitleResID:I

    .line 57
    return-void
.end method
