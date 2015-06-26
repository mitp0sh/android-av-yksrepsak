.class public Lae/javax/xml/bind/JAXBException;
.super Ljava/lang/Exception;
.source "JAXBException.java"


# static fields
.field static final serialVersionUID:J = -0x4e032b8ea226b88bL


# instance fields
.field private errorCode:Ljava/lang/String;

.field private linkedException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 122
    iput-object p2, p0, Lae/javax/xml/bind/JAXBException;->errorCode:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lae/javax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0, v0, p1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lae/javax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/javax/xml/bind/JAXBException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lae/javax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 173
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 174
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 192
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 193
    return-void
.end method

.method public declared-synchronized setLinkedException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lae/javax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lae/javax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - with linked exception:\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/javax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

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
