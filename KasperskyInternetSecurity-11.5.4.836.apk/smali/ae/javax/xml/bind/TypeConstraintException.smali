.class public Lae/javax/xml/bind/TypeConstraintException;
.super Ljava/lang/RuntimeException;
.source "TypeConstraintException.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private linkedException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, v0}, Lae/javax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/javax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    iput-object p2, p0, Lae/javax/xml/bind/TypeConstraintException;->errorCode:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lae/javax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0, v0, p1}, Lae/javax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lae/javax/xml/bind/TypeConstraintException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/TypeConstraintException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 196
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 181
    iget-object v0, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 183
    const-string v0, "--------------- linked to ------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 187
    return-void
.end method

.method public declared-synchronized setLinkedException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - with linked exception:\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/javax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
