.class public Lae/javax/xml/bind/helpers/ValidationEventImpl;
.super Ljava/lang/Object;
.source "ValidationEventImpl.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEvent;


# instance fields
.field private linkedException:Ljava/lang/Throwable;

.field private locator:Lae/javax/xml/bind/ValidationEventLocator;

.field private message:Ljava/lang/String;

.field private severity:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V
    .locals 1
    .param p1, "_severity"    # I
    .param p2, "_message"    # Ljava/lang/String;
    .param p3, "_locator"    # Lae/javax/xml/bind/ValidationEventLocator;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "_severity"    # I
    .param p2, "_message"    # Ljava/lang/String;
    .param p3, "_locator"    # Lae/javax/xml/bind/ValidationEventLocator;
    .param p4, "_linkedException"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->setSeverity(I)V

    .line 99
    iput-object p2, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->message:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->locator:Lae/javax/xml/bind/ValidationEventLocator;

    .line 101
    iput-object p4, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->linkedException:Ljava/lang/Throwable;

    .line 102
    return-void
.end method


# virtual methods
.method public getLinkedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->linkedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocator()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->locator:Lae/javax/xml/bind/ValidationEventLocator;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->severity:I

    return v0
.end method

.method public setLinkedException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "_linkedException"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->linkedException:Ljava/lang/Throwable;

    .line 155
    return-void
.end method

.method public setLocator(Lae/javax/xml/bind/ValidationEventLocator;)V
    .locals 0
    .param p1, "_locator"    # Lae/javax/xml/bind/ValidationEventLocator;

    .prologue
    .line 166
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->locator:Lae/javax/xml/bind/ValidationEventLocator;

    .line 167
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "_message"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->message:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSeverity(I)V
    .locals 2
    .param p1, "_severity"    # I

    .prologue
    .line 123
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ValidationEventImpl.IllegalSeverity"

    invoke-static {v1}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput p1, p0, Lae/javax/xml/bind/helpers/ValidationEventImpl;->severity:I

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->getSeverity()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 181
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->getSeverity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const-string v1, "[severity={0},message={1},locator={2}]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;->getLocator()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 178
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_0
    const-string v0, "WARNING"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ERROR"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_2
    const-string v0, "FATAL_ERROR"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
