.class public final LcB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/kaspersky/components/webfilter/Request$Method;

.field private final c:Ljava/lang/String;

.field private final d:LcI;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "(\\w+)\\s+(\\S+)?\\s?(HTTP\\/\\d{1}\\.\\d{1})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LcB;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, LcB;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcB;->c:Ljava/lang/String;

    .line 131
    iget-object v0, p0, LcB;->c:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/kaspersky/components/webfilter/Request$Method;->GET:Lcom/kaspersky/components/webfilter/Request$Method;

    iput-object v0, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    .line 142
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v2, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    sget-object v3, Lcom/kaspersky/components/webfilter/Request$Method;->CONNECT:Lcom/kaspersky/components/webfilter/Request$Method;

    if-ne v2, v3, :cond_6

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    :goto_1
    new-instance v2, LcI;

    invoke-direct {v2, v0}, LcI;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, LcB;->d:LcI;

    .line 153
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcB;->e:Ljava/lang/String;

    .line 154
    iput-boolean p2, p0, LcB;->f:Z

    .line 155
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, LcB;->c:Ljava/lang/String;

    const-string v2, "CONNECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    sget-object v0, Lcom/kaspersky/components/webfilter/Request$Method;->CONNECT:Lcom/kaspersky/components/webfilter/Request$Method;

    iput-object v0, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, LcB;->c:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    sget-object v0, Lcom/kaspersky/components/webfilter/Request$Method;->POST:Lcom/kaspersky/components/webfilter/Request$Method;

    iput-object v0, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, LcB;->c:Ljava/lang/String;

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    sget-object v0, Lcom/kaspersky/components/webfilter/Request$Method;->HEAD:Lcom/kaspersky/components/webfilter/Request$Method;

    iput-object v0, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    goto :goto_0

    .line 140
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LcB;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    const-string v2, "http://mobile.kaspersky.local"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "http://mobile.kaspersky.local"

    const-string v3, "file://"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static synthetic a(LcB;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, LcB;->f:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, LcB;->f:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    sget-object v1, Lcom/kaspersky/components/webfilter/Request$Method;->CONNECT:Lcom/kaspersky/components/webfilter/Request$Method;

    if-ne v0, v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LcB;->d:LcI;

    invoke-virtual {v1}, LcI;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LcB;->d:LcI;

    invoke-virtual {v1}, LcI;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, LcB;->d:LcI;

    invoke-virtual {v0}, LcI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, LcB;->d:LcI;

    invoke-virtual {v0}, LcI;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/kaspersky/components/webfilter/Request$Method;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, LcB;->b:Lcom/kaspersky/components/webfilter/Request$Method;

    return-object v0
.end method

.method public final b()LcI;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, LcB;->d:LcI;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, LcB;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, LcB;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LcB;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
